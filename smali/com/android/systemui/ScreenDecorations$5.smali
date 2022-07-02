.class Lcom/android/systemui/ScreenDecorations$5;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->listenFillUDCDisplayCutout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/ScreenDecorations;->access$902(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 1046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFillUDCDisplayCutout changed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$900(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenDecorations"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$900(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget p1, p1, Lcom/android/systemui/ScreenDecorations;->mCutoutThickness:I

    if-lez p1, :cond_1

    const-string p1, "createOverlay to fill UDC by setting"

    .line 1049
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1, v2}, Lcom/android/systemui/ScreenDecorations;->access$1000(Lcom/android/systemui/ScreenDecorations;I)V

    .line 1051
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$600(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Z)V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "setupOverlays to fill UDC by setting"

    .line 1055
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1200(Lcom/android/systemui/ScreenDecorations;)V

    .line 1057
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p1

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    .line 1058
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mIsFrontCameraEnable:Z

    if-nez p1, :cond_2

    .line 1059
    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$600(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Z)V

    :cond_2
    :goto_1
    return-void
.end method
