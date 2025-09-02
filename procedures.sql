-- prevents overbooking

CREATE OR REPLACE FUNCTION prevent_overbooking()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT COUNT(*) FROM Bookings WHERE flight_id = NEW.flight_id) 
     >= (SELECT total_seats FROM Flights WHERE flight_id = NEW.flight_id) THEN
    RAISE EXCEPTION 'Cannot book: Flight is full';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_overbooking
BEFORE INSERT ON Bookings
FOR EACH ROW
EXECUTE FUNCTION prevent_overbooking();
