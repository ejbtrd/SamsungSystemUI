.class final Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlashlightDetailAdapter"
.end annotation


# instance fields
.field private mSlider:Landroid/widget/SeekBar;

.field private mWarningTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

.field private final torchLevelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    .line 469
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    .line 573
    new-instance p1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->torchLevelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/qs/tiles/FlashlightTile$1;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 517
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_detail_flashlight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 519
    sget p2, Lcom/android/systemui/R$id;->text_level1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 520
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_flashlight_detail_level:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    sget p2, Lcom/android/systemui/R$id;->text_level2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 523
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1600(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    sget p2, Lcom/android/systemui/R$id;->text_warning:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    .line 526
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1800(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$string;->quick_settings_flashlight_detail_warning:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1700(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->sec_quick_settings_flashlight_label:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 527
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->flashlight_slider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    .line 530
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->torchLevelChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 531
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 533
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    new-instance p3, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p2, "QPD103"

    .line 543
    invoke-static {p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 545
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1900(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$800(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->qs_detail_flashlight_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$900(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 487
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isFlashlightTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1000(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    .line 489
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setToggleState blocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1200(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->flash_light_disabled_by_low_battery:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$700(Lcom/android/systemui/qs/tiles/FlashlightTile;Ljava/lang/CharSequence;)V

    .line 496
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$1300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V

    .line 504
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPDE1008"

    const-string v0, "location"

    const-string v1, "flashlight"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDetailView(Z)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$2300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
