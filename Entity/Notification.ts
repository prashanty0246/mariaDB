import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class Notifications {
    @PrimaryColumn({type:"text"})
    request_id: string

    @Column({type:"text"})
    request_type: string

    @Column({type:"text"})
    status: string

    @Column({type:"text"})
    role: string

    @Column({type:"text"})
    meta: string

    @PrimaryColumn({ type: "timestamp", precision: 6, nullable: false })
    last_updated_timestamp: Date
}


