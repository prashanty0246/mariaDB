import { Entity, Column,  PrimaryColumn} from "typeorm"

@Entity({name:"transaction_token_mapping", synchronize: true})
export class TransactionTokenMapping {
    @PrimaryColumn({type:"text"})
    txn_id: string

    @Column({type:"text"})
    request_type: string

    @Column({type:"text"})
    request_id: string

    @Column({type:"text"})
    debit_ref: string

    @PrimaryColumn({type:"text"})
    serial_no: string

    @Column({type:"text"})
    token_details: string
}



