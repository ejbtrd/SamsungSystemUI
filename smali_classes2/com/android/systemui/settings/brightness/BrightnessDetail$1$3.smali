.class Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 234
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$300(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DetailView.admin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$300(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", return."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$1200(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
