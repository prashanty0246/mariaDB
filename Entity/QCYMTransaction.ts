import { Entity, Column,  PrimaryColumn} from "typeorm"

@Entity()
export class QCYMTransaction {
    @PrimaryColumn({type:"text"})
    txn_id: string

    @PrimaryColumn({type:"text"})
    request_id: string

    @Column({type:"text"})
    request_type: string

    @Column({type:"text"})
    account_number: string

    @Column({type:"text"})
    wallet_address: string

    @Column({type:"decimal"})
    amount: number

    @Column({ type: "timestamp", precision: 6, nullable: false })
    timestamp: Date

    @Column({type:"text"})
    date_of_payment: string

    @Column({type:"text"})
    txn_status: string

    @Column({type:"text"})
    response_code: string
}


