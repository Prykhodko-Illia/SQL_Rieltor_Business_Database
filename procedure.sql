
delimiter //

create procedure getHousesBySurface(in surface DECIMAL)
begin
	select h.id, h.seller_id, h.surface
	from houses h
	where h.surface > surface;
end

delimiter ;

call getHousesBySurface(40);

drop procedure if exists getHousesBySurface;