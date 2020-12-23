package com.repository;


import com.entity.TicketRedis;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketRedisRepository extends CrudRepository<TicketRedis, String> {}