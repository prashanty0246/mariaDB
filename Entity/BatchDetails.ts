import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"batch_detail", synchronize: true})
export class BatchDetails {
    @PrimaryColumn()
    indent_id: string

    @PrimaryColumn()
    id: string

    @Column({type: 'int'})
    count: number

    @Column({type:"text"})
    start_serial_no: string

    @Column({type:"text"})
    end_serial_no: string

    @Column({ type: "timestamp", precision: 6, nullable: true })
    date_of_issuance: Date

    @Column("decimal")
    denomination: number

    @Column({type:"text"})
    doc_type: string

    @Column({ type: "timestamp", precision: 6, nullable: true })
    expiration_timestamp: Date

    @Column({type: 'int'})
    max_count: number

    @Column({type:"text"})
    rules: string

   @Column({type:"text"})
    signature: string

   @Column({type:"text"})
    status: string

   @Column({type:"text"})
    token_type: string
}


