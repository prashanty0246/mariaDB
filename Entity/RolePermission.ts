import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class RolePermission {
    @PrimaryGeneratedColumn()
    id: number
    
    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

    @Column({type:"text"})
    role_name: string

    @Column({type:"text"})
    status: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_at: Date
}


