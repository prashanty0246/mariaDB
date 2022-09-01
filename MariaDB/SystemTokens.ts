import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class SystemTokens {
    @PrimaryColumn({type:"text"})
    tokenId: string

    @Column({type:"text"})
    status: string
}



