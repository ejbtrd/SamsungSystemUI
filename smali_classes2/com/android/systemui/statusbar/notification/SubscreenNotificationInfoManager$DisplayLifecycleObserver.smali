.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;
.super Ljava/lang/Object;
.source "SubscreenNotificationInfoManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayLifecycleObserver"
.end annotation


# instance fields
.field private mIsFolderOpened:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 403
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->mIsFolderOpened:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 404
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->showRemoteInput()V

    return-void
.end method
