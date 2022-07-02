.class public final enum Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
.super Ljava/lang/Enum;
.source "NotificationBackupRestoreManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/notification/NotificationBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum PARTIAL_SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum STORAGE_FULL:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 99
    new-instance v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v3, "UNKNOWN_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v5, "STORAGE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v5, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v7, "INVALID_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    new-instance v7, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v9, "PARTIAL_SUCCESS"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 97
    sput-object v9, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->value:I

    .line 103
    iput p3, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 97
    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    invoke-virtual {v0}, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->value:I

    return p0
.end method
