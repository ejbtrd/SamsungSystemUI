.class final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
.super Ljava/lang/Enum;
.source "KeyguardUnlockInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 179
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const-string v1, "AUTH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 180
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const-string v3, "AUTH_SECURITY_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 181
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const-string v5, "AUTH_BIOMETRICS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 182
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const-string v7, "AUTH_SMART_LOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 183
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const-string v9, "AUTH_SKIP_BOUNCER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 184
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
