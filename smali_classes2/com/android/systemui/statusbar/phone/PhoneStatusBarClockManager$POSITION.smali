.class public final enum Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
.super Ljava/lang/Enum;
.source "PhoneStatusBarClockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->$VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 1

    .line 46
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->$VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object v0
.end method
