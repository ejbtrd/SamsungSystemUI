.class Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;Z)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getFlashlightLevel()I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->val$state:Z

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 557
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$2100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const-string v3, "QPDS1014"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 563
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$2100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2200(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2200(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$2;->val$state:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
