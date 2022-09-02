import { Entity, Column ,PrimaryGeneratedColumn,  PrimaryColumn} from "typeorm"

@Entity()
export class User {
    @PrimaryColumn({type:"text"})
    username: string

    @Column({type:"text"})
    department: string

    @Column({type:"text"})
    email: string

    @Column({type:"int"})
    id: number

    @Column({type:"text"})
    password: string

    @Column()
    reset_password: boolean

    @Column({type:"text"})
    status: string
}



