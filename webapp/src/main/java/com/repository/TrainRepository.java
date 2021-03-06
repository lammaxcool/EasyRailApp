package com.repository;

import com.entity.Train;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainRepository extends JpaRepository<Train, Long> {
    Train findByTrainName(String name);
    Train getTrainByRouteId(Long id);
}
