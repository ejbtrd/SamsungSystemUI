.class public final enum Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;
.super Ljava/lang/Enum;
.source "VolumeWarningSideViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WarningDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

.field public static final enum DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

.field public static final enum MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

.field public static final enum VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const-string v1, "DEFAULT_SAFETY_VOLUME_WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    .line 50
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const-string v3, "MEDIA_VOLUME_LIMITER_WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    .line 51
    new-instance v3, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const-string v5, "VOLUME_CSD_100_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 48
    sput-object v5, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->$VALUES:[Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;
    .locals 1

    .line 48
    const-class v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->$VALUES:[Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/view/VolumeWarningSideViewDialog$WarningDialogType;

    return-object v0
.end method
