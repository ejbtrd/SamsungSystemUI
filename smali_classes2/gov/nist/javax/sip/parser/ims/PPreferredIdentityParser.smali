.class public Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PPreferredIdentityParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "PreferredIdentityParser.parse"

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x84a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 70
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 72
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v2, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 75
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    .line 78
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_2
    throw v0
.end method
