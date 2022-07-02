.class public final synthetic Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->$r8$lambda$cXXJZYgD5bD2DMU0NWuMXin5tk0(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V

    return-void
.end method
