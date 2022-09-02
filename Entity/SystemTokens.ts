import { Entity, Column,  PrimaryColumn} from "typeorm"

@Entity({name:"system_tokens", synchronize: true})
export class SystemTokens {
    @PrimaryColumn({type:"text"})
    tokenId: string

    @Column({type:"text"})
    status: string
}



