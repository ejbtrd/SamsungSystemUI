.class final enum Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
.super Ljava/lang/Enum;
.source "KeyguardTouchDymLockInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public static final enum UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 191
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 192
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 193
    new-instance v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v5, "UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 194
    new-instance v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v7, "DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 195
    new-instance v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v9, "TAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 196
    new-instance v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const-string v11, "SWIPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 190
    sput-object v11, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->$VALUES:[Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 1

    .line 190
    const-class v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 1

    .line 190
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->$VALUES:[Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v0}, [Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object v0
.end method
