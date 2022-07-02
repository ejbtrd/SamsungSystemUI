.class public final enum Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
.super Ljava/lang/Enum;
.source "CoverViewAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

.field public static final enum SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v1, "SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 18
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v3, "HIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 19
    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v5, "SHOW_CONFIRM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 20
    new-instance v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v7, "HIDE_CONFIRM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 21
    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v9, "CONFIGURATION_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 22
    new-instance v9, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v11, "SECURE_CONFIRM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    .line 23
    new-instance v11, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const-string v13, "COVER_TOAST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 16
    sput-object v13, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    .line 16
    const-class v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;
    .locals 1

    .line 16
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    return-object v0
.end method
