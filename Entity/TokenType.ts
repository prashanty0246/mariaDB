import { Entity, Column ,PrimaryGeneratedColumn } from "typeorm"

@Entity({name:"token_type", synchronize: true})
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


