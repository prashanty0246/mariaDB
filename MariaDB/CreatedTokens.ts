import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class CreatedTokens {
    @PrimaryColumn({type:"decimal"})
    value: number

    @Column({type:"text"})
    id: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    claimed_timestamp: Date

    @Column({ type: "timestamp", precision: 6, nullable: false })
    creation_timestamp: Date

    @Column({type:"text"})
    currency: string

    @Column({type:"text"})
    doc_type: string

    @PrimaryColumn({ type: "timestamp", precision: 6, nullable: false })
    expiration_timestamp: Date

    @Column({type:"text"})
    issuer_address: string

    @Column({type:"text"})
    issuer_signature: string

    @Column({type:"int"})
    maximum_count: number

    @Column({type:"text"})
    owner_address: string

    @Column({type:"text"})
    owner_vault_id: string

    @PrimaryColumn({type:"text"})
    serial_no: string

    @Column({type:"text"})
    status: string

    @Column({type:"text"})
    tag: string

    @Column({type:"text"})
    txn_id: string

    @Column({type:"text"})
    type: string

    @PrimaryColumn({ type: "timestamp", precision: 6, nullable: false })
    updated_timestamp: Date

    @Column({type:"int"})
    usage_count: number

    @Column()
    isIssued: boolean

    @Column({type:"text"})
    meta: string

    @Column({type:"text"})
    indent_id: string
}


