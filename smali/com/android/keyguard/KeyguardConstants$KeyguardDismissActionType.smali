.class public final enum Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
.super Ljava/lang/Enum;
.source "KeyguardConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_OFF:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_ON:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 38
    new-instance v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v1, "KEYGUARD_DISMISS_ACTION_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 39
    new-instance v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v3, "KEYGUARD_DISMISS_ACTION_SHUTDOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 40
    new-instance v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v5, "KEYGUARD_DISMISS_ACTION_REBOOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 41
    new-instance v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v7, "KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_ON:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 42
    new-instance v7, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v9, "KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_OFF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_OFF:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    .line 43
    new-instance v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v11, "KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 36
    sput-object v11, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    .line 36
    const-class v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object v0
.end method
