import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class UserRole {
    @PrimaryColumn({type:"int"})
    user_id: number

    @PrimaryColumn({type:"int"})
    role_id: number

    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_at: Date
}



