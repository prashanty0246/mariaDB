import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity({name:"permission", synchronize: true})
export class Permission {
    @PrimaryGeneratedColumn()
    id: number
    
    @Column({ type: "timestamp", precision: 6, nullable: false })
    created_at: Date

    @Column({type:"text"})
    name: string

    @Column({type:"text"})
    status: string

    @Column({ type: "timestamp", precision: 6, nullable: false })
    updated_at: Date
}


