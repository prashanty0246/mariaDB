import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"token_request", synchronize: true})
export class TokenRequest {
    @PrimaryColumn({type: "text"})
    id: string
    
    @PrimaryColumn({type: "text"})
    doc_type: string
    
    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

    @Column({type:"text"})
    receiver_address: string

    @Column({type:"text"})
    receiver_organization: string

    @Column({type:"text"})
    maker_name: string

    @Column({type:"text"})
    maker_remarks: string

    @Column({type:"text"})
    checker_name: string

    @Column({type:"text"})
    checker_remarks: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    checked_at: Date

    @Column({type:"text"})
    approver_name: string

    @Column("text")
    approver_remarks: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    approved_at: Date

    @Column({type:"text"})
    sender_address: string

    @Column("text")
    sender_organization: string

    @Column({type:"text"})
    status: string

    @Column("text")
    tokens_requested: string

    @Column("decimal")
    total_amount: number

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_at: Date

    @Column({type:"text"})
    txn_ref_no: string

    @Column("text")
    sub_type: string

    @Column({type:"text"})
    req_msg_id: string

    @Column("text")
    recall_id: string
}


