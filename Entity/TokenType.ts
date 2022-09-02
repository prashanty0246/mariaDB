import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class TokenType {
    @PrimaryGeneratedColumn()
    id: number

    @Column({ type: "timestamp", precision: 6, nullable: false })
    creation_timestamp: Date

    @Column({type:"text"})
    ownerid: string

    @Column({type:"text"})
    status: string

    @Column({type:"text"})
    type: string
}


