.class public final synthetic Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;
.super Ljava/lang/Object;
.source "KeyguardUnlockInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
