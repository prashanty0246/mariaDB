import { Entity, Column ,  PrimaryColumn} from "typeorm"

@Entity({name:"liquidity_management", synchronize: true})
export class LiquidityManagement {
    @PrimaryColumn({type:"text"})
    denomination: string

    @Column({type:"int"})
    min_threshhold: number

    @Column({type:"int"})
    max_threshhold: number

    @Column({type:"int"})
    batch_size: number
}


