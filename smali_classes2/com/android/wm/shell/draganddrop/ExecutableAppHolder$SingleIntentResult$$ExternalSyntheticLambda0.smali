.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->$r8$lambda$QcC0ke0UgVYdUy4c-VQc1iIBnks(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method
