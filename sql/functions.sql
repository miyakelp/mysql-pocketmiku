
delimiter //
CREATE FUNCTION mikumiku.calc_length(bpm INT, note FLOAT) RETURNS INT DETERMINISTIC
begin
  RETURN (((60 * 1000 / bpm * note)));
end
//
delimiter ;

delimiter //
CREATE PROCEDURE mikumiku.note_on(IN bpm INT, IN note FLOAT, IN k VARCHAR(32), IN s VARCHAR(32),  IN v TINYINT)
begin
  INSERT INTO mikumiku.`/dev/midi1` (`key`, `sound`, `velocity`, `length`) VALUES (
    (select number from mikumiku.note_master where name = k),
    (select number from mikumiku.sound_master where sound = s),
    v,
    mikumiku.calc_length(bpm, note)
  );
end
//
delimiter ;
