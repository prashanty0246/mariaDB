import "reflect-metadata"
import { Entity, Column,  PrimaryColumn} from "typeorm"

@Entity({name:"user", synchronize: true})
export class User {
    @PrimaryColumn({length: 512})
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



