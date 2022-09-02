import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity()
export class Transaction {
    @PrimaryColumn()
    transaction_id: string

    @PrimaryColumn({ type: "timestamp", precision: 6, nullable: false })
    creation_timestamp: Date

    @Column("decimal")
    amount: number

    @Column({type:"text"})
    id: string

    @Column({type:"text"})
    receiver_address: string

    @Column({type:"text"})
    receiver_organization: string

    @Column({type:"text"})
    remark: string

    @Column({type:"text"})
    sender_address: string

   @Column({type:"text"})
   sender_organization: string

   @Column({type:"text"})
    status: string

   @Column({type:"text"})
   type: string
}


