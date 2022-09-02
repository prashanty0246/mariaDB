import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity()
export class AuditTrail {
    @PrimaryColumn({type: 'text'})
    id: string

    @PrimaryColumn({ type: "timestamp", precision: 6, nullable:false })
    creation_timestamp: Date

    @Column({type:"text"})
    doc_type: string

    @Column({type: 'text'})
    audit_trail: string
}


