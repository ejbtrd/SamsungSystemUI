.class Lcom/android/systemui/ScreenDecorations$7;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePrivacyIndicatorOverlay(Z)V
    .locals 2

    .line 1146
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreatePrivacyIndicatorOverlay  dotVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDecorations"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$1500(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, p1}, Lcom/android/systemui/ScreenDecorations;->access$1502(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 1152
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1200(Lcom/android/systemui/ScreenDecorations;)V

    :cond_1
    return-void
.end method

.method public onRemovePrivacyIndicatorOverlay()V
    .locals 2

    .line 1158
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenDecorations"

    const-string v1, "onRemovePrivacyIndicatorOverlay "

    .line 1159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$1502(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 1162
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1200(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method
