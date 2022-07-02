.class Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;
.super Ljava/lang/Object;
.source "VolumeSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/view/VolumeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeSeekbarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/view/VolumeSeekBar;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/android/systemui/volume/view/VolumeSeekBar$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/volume/view/VolumeSeekBar;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->access$100(Lcom/android/systemui/volume/view/VolumeSeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    new-instance p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 201
    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->access$200(Lcom/android/systemui/volume/view/VolumeSeekBar;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 202
    invoke-virtual {p0, p3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 p3, 0x1

    .line 203
    invoke-virtual {p0, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 p2, 0x0

    .line 200
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 211
    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->access$200(Lcom/android/systemui/volume/view/VolumeSeekBar;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$VolumeSeekbarChangeListener;->this$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 219
    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->access$200(Lcom/android/systemui/volume/view/VolumeSeekBar;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    .line 218
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
