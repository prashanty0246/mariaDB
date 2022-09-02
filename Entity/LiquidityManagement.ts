import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
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


