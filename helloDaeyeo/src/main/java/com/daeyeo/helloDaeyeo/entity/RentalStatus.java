package com.daeyeo.helloDaeyeo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RentalStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int rentalStatusId;

    @ManyToOne(fetch = FetchType.LAZY)
    Member member;

    @ManyToOne(fetch = FetchType.LAZY)
    RentalObject rentalObject;

    @OneToMany(mappedBy = "rentalStatus")
    List<RentalLog> rentalLogs = new ArrayList<RentalLog>();

    @Enumerated(EnumType.STRING)
    private Status status;

    // 대여 신청 날짜
    private LocalDateTime startTime;
    private LocalDateTime endTime;
    private LocalDate rentalDate;

    // 대여하는 날짜
    private LocalDate rentalDate;

    public void setMember(Member member) {
        this.member = member;
        member.getRentalStatuses().add(this);
    }

    public void setRentalObject(RentalObject rentalObject) {
        this.rentalObject = rentalObject;
        rentalObject.getRentalStatuses().add(this);
    }
}
