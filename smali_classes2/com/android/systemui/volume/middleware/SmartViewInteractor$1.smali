.class synthetic Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;
.super Ljava/lang/Object;
.source "SmartViewInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/middleware/SmartViewInteractor;
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
    .locals 4

    .line 88
    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :catch_1
    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    :try_start_2
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
