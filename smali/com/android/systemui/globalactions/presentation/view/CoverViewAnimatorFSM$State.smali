.class final enum Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
.super Ljava/lang/Enum;
.source "CoverViewAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    .line 12
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v3, "MAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    .line 13
    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v5, "CONFIRM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
    .locals 1

    .line 10
    const-class v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
    .locals 1

    .line 10
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-object v0
.end method
