.class Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->initBrightnessDetail(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 249
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$900(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$700(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$1000(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Z)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPDE1006"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$1100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "QPDS1006"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$1100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
