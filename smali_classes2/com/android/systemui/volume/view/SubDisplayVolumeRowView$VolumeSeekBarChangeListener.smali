.class final Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SubDisplayVolumeRowView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 345
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    new-instance p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    .line 346
    invoke-static {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->access$100(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 347
    invoke-virtual {p0, p3, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 p3, 0x1

    .line 348
    invoke-virtual {p0, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 p2, 0x0

    .line 345
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 355
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    .line 356
    invoke-static {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->access$100(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 363
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    .line 364
    invoke-static {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->access$100(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    .line 363
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
