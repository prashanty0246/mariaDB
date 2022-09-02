import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity({name:"audit_trail", synchronize: true})
export class AuditTrail {
    @PrimaryColumn({type: 'text'})
    id: string

    @PrimaryColumn({type: 'text'})
    creation_timestamp: string

    @Column({type:"text"})
    doc_type: string

    @Column({type: 'text'})
    audit_trail: string
}


