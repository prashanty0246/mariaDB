import { Entity, Column , PrimaryColumn} from "typeorm"

@Entity()
export class OrgUsers {
    @PrimaryColumn({type: "text"})
    user_id: string
    
    @PrimaryColumn({type: "text"})
    org: string

    @Column({type: "text"})
    password: string

    @Column({type: "text"})
    contact: string

    @Column({type: "text"})
    created_by: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

}


