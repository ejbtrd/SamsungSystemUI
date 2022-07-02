.class Lcom/android/systemui/qs/bar/BrightnessBar$2;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetailViews(Lcom/android/systemui/qs/QSPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->access$000(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/brightness/BrightnessDetail;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->showDetail(Z)V

    .line 240
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPPE1010"

    const-string v1, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "QPD101"

    .line 242
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 244
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 245
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
