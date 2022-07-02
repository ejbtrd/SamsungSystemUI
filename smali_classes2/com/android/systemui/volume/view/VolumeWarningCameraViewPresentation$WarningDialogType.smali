.class public final enum Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;
.super Ljava/lang/Enum;
.source "VolumeWarningCameraViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WarningDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

.field public static final enum DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

.field public static final enum MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

.field public static final enum VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const-string v1, "DEFAULT_SAFETY_VOLUME_WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 45
    new-instance v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const-string v3, "MEDIA_VOLUME_LIMITER_WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 46
    new-instance v3, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const-string v5, "VOLUME_CSD_100_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 43
    sput-object v5, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->$VALUES:[Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;
    .locals 1

    .line 43
    const-class v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->$VALUES:[Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/view/VolumeWarningCameraViewPresentation$WarningDialogType;

    return-object v0
.end method
