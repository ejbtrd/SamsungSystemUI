.class abstract Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.super Ljava/lang/Thread;
.source "KeyguardSimPersoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPersoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPerso"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public static synthetic $r8$lambda$cXXJZYgD5bD2DMU0NWuMXin5tk0(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->lambda$run$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffV9VrsV6wrn56CFpp94klp54l8(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->lambda$run$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$run$0(Z)V
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->onSimCheckResponse(Z)V

    return-void
.end method

.method private synthetic lambda$run$1()V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->onSimCheckResponse(Z)V

    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 6

    const-string v0, "KeyguardSimPersoView"

    const-wide/16 v1, 0x32

    :try_start_0
    const-string v3, "isemtelephony"

    .line 191
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ISemTelephony;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSimPerso supplyPerso returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$600(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v5, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V

    invoke-virtual {v4, v5, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RemoteException for supplyPerso:"

    .line 200
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$700(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void
.end method
