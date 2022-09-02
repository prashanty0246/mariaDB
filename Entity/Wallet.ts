import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class Transaction {
    @PrimaryGeneratedColumn()
    id: number

    @PrimaryColumn({type:"text"})
    address: string

    @Column({type:"text"})
    currency: string

    @Column({type:"text"})
    ownerid: string

    @Column({type:"text"})
    vpaaddress: string

    @Column({type:"text"})
    walletid: string
}


