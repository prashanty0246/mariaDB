import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity()
export class IndentRequest {
    @PrimaryColumn({type: "text"})
    id: string

    @Column({type: "text"})
    bank_id: string
    
    @Column({ type: "timestamp", precision: 6, nullable: false })
    creation_timestamp: Date

    @Column({ type: "timestamp", precision: 6, nullable: false })
    expiration_timestamp: Date

    @Column("int")
    max_count: number

    @Column("int")
    processed_count: number

    @Column({type:"text"})
    maker_name: string

    @Column({type:"text"})
    maker_remarks: string

    @Column({type:"text"})
    checker_name: string

    @Column({type:"text"})
    checker_remarks: string

    @Column({type:"text"})
    status: string

   @Column({type:"text"})
   token_type: string

   @Column({type:"text"})
   tokens_requested: string

   @Column({type:"decimal"})
   total_amount: number

   @Column("int")
   total_count: number

   @Column({type:"text"})
   meta: string
}


