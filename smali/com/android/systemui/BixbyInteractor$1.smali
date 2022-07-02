.class Lcom/android/systemui/BixbyInteractor$1;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "BixbyInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BixbyInteractor;->updateSbixbyStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BixbyInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/BixbyInteractor;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 3

    const-string v0, "BixbyInteractor"

    const-string v1, "-----------------------onAppStateRequested()----------------------------- "

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getBixbyNotificationInfo()Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppStateRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onCapsuleIdRequested()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "viv.systemApp"

    return-object p0
.end method
