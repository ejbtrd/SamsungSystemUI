.class synthetic Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;
.super Ljava/lang/Object;
.source "BixbyServiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

.field static final synthetic $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    :try_start_1
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
