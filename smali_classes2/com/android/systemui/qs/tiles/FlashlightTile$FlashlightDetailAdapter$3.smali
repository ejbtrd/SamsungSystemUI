.class Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_3

    .line 577
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2200(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2200(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 583
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object p1

    add-int/lit8 p3, p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 587
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$2100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    const-string p3, "QPDS1014"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 588
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$2100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 599
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    .line 601
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "QPDE1014"

    .line 601
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
