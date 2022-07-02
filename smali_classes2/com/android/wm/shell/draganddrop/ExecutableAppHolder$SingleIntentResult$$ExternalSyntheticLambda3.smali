.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->$r8$lambda$tG47jlTrMQ9TYtINt8_RChorNVE(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method
