program battlemind;
uses WinCrt,crt;
Type
tab=Array[1..3,1..3] of Integer;
Var
m:tab;
vee:Boolean;
mny,n,r,x,ind,i,class,scorej,scorep,ctr1,rep1,rep2,rep3,fzw,rst,scj,scp,opt,cmp,opp,
e1hpx,e2hpx,e3hpx,kp,inv,kn,e1hp,e2hp,e3hp,hpr,nbpt,hpre,hp,hpx:Integer;
s,q,yf,w,d,f:char;
ch1,ch2,ch3,finale,win,pseudo,replay:String;






//page accueil
procedure start;
Begin
WriteLn;
WriteLn;
writeln('                                    (          *    (       ) (       ');
writeln('            (    (      *   )  *   ))\ )     (  `   )\ ) ( /( )\ )  ');
writeln('          ( )\   )\   ` )  /(` )  /(()/( (   )\))( (()/( )\()|()/(');
writeln('          )((_|(((_)(  ( )(_))( )(_))(_)))\ ((_)()\ /(_)|(_)\ /(_))  ');
writeln('           ((_)_ )\ _ )\(_(_())(_(_()|_)) ((_)(_()((_|_))  _((_|_))_ ');
writeln('            | _ )(_)_\(_)_   _||_   _| |  | __|  \/  |_ _|| \| ||   \ ');
writeln('            | _ \ / _ \   | |    | | | |__| _|| |\/| || | | .` || |) | ');
writeln('            |___//_/ \_\  |_|    |_| |____|___|_|  |_|___||_|\_||___/');
writeln('                          _  _ ____ _  _ _  _ _ ___ ');
writeln('                     by   |\/| [__] |__| |--| | |==] ');
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
writeln('          .-"^`\                                        /`^"-.   ');
writeln('         .''   ___\                                      /___   `.   ');
writeln('        /    /.---.                                    .---.\    \ ');
writeln('       |    //     ''-.''  ___________________________ .-        \\  ');
writeln('       |   ;|         \/--------------------------//         |;   |      ');
writeln('       \   ||       |\_)        taper            (_/|       ||   /    ');
writeln('        \  | \  . \ ;  |           ENTRER         || ; / .  / |  / ');
writeln('         ''\_\ \\ \ \ \ |               pour       ||/ / / // /_/' );
writeln('               \\ \ \ \|                  jouer   |/ / / // ');
writeln('                `''-\_\_\                          /_/_/-   ');
writeln('                       ''--------------------------''');
Readln;
end;












//choisir le personnage
Procedure choose_class;
Begin
writeln;
writeln;
writeln('                               |\             //            ');
writeln('                                \\           _!_            ');
writeln('                                 \\         /___\           ');
writeln('                                  \\        [+++]           ');
writeln('                                   \\    _ _\^^^/_ _        ');
writeln('         Chevalier                  \\/ (    ''-''  ( )      ');
writeln('            [1]                     /( \/ | {&}   /\ \       ');
writeln('                                      \  / \     / _> )      ');
writeln('                                       "`   >:::;-''`""''-.  ');
writeln('  cette classe a beaucoup de sante         /:::/         \  ');
writeln('mais fait moins de degats aux ennemis      /  /||   {&}   |  ');
writeln('                                          (  / (\         /  ');
writeln('                                          / /   \''-.___.-'' ');
writeln('                                        _/ /     \ \         ');
writeln('                                       /___|    /___|        ');
writeln;
writeln;
writeln('     /___\_/');
writeln('     |\_/|<\');
writeln('     (`o`) `   __(\_            |\_');
writeln('     \ ~ /_.-`` _|__)  ( ( ( ( /()/ ');
writeln('    _/`-`  _.-``               `\|');
writeln(' .-`      (    .-.            _                       NINJA  ');
writeln('(   .-     \  /   `-._       | |                       [2]   ');
writeln(' \  (\_    /\/        `-.__-()\');
writeln('  `-|__)__/ /  /``-.   /_____8\         cette classe a moins de sante      ');
writeln('        \__/  /     `-`              mais fait plus de degats aux ennemis   ');
writeln('       />|   /');
writeln('      /| J   L');
writeln('      `` |   | ');
writeln('         L___J  ');
writeln('          (_|      ');
end;



procedure pick_class(var class:Integer);
Begin
Repeat
writeln('choisissez votre combattant [1/2] : ');
Write(' ==> ');
read(class);
until (class=1) or (class=2);
end;







//affiche le nom du jeu au debut
procedure name_layout ;
Begin
writeln('             ___   _ _____ _____ _    ___ __  __ ___ _  _ ___  ');
writeln('            | _ ) /_\_   _|_   _| |  | __|  \/  |_ _| \| |   \ ');
writeln('            | _ \/ _ \| |   | | | |__| _|| |\/| || || .` | |) |');
writeln('            |___/_/ \_\_|   |_| |____|___|_|  |_|___|_|\_|___/ ');
end;








//difficulté
procedure difficulte (var d:char);
Begin
writeln;
writeln;
writeln('choisissez votre difficulte:');
writeln;
writeln('facile = f ');
writeln('moyenne = m ');
writeln('difficile = d ');
writeln;
repeat
write('difficulte: ');
readln(d);
until d in ['d','f','m'];
end;








//séquence 1
procedure prologue ;
Begin
clrscr;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln('        Vous etes un prince, et votre princesse a ete kidnappee');
writeln('         par un inconnu. Vous avez recu un message contenant');
writeln('        l''emplacement de sa donjon. Alors vous allez la sauver.');
writeln('   N''oubliez pas d''agir avec sagesse et de ne faire aucun choix stupide.');
writeln;
writeln;
writeln('                            Bienvenue dans' );
writeln('             _    _    _    _    _    _    _    _    _    _  ' );
writeln('            / \  / \  / \  / \  / \  / \  / \  / \  / \  / \ ');
writeln('           ( b )( a )( t )( t )( l )( e )( m )( i )( n )( d ) ');
writeln('            \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  ');
writeln;
writeln;
writeln;
writeln('                              *******************');
writeln;
writeln('      **Appuyez sur ENTRER pour entrer dans ''chateau d''Angoumomble''.**');
writeln;
writeln('                              *******************');
readln;
ClrScr;
end;

procedure castle;
Begin
writeln('                       <^\()/^>               <^\()/^>');
writeln('                        \/  \/                 \/  \/');
writeln('                         /__\      .      .      /__\ ');
writeln('            ==            /\    .     |     .    /\            ==');
writeln('         <^\()/^>       !_\/       ''  |  ''       \/_!       <^\()/^>');
writeln('          \/  \/     !_/I_||  .  ''   \''/   ''  .  ||_I\_!     \/  \/');
writeln('           /__\     /I_/| ||      -== + ==-      || |\_I\     /__\');
writeln('           /_ \   !//|  | ||  ''  .   /.\   .  ''  || |  |\\!   /_ \');
writeln('          (-   ) /I/ |  | ||       .  |  .       || |  | \I\ (=   )');
writeln('           \__/!//|  |  | ||           |         || |  |  |\\!\__/');
writeln('           /  \I/ |  |  | ||           .        *|| |  |  | \I/  \');
writeln('          {_ __}  |  |  | ||                     || |  |  |  {____}');
writeln('       _!__|= ||  |  |  | ||   *      +          || |  |  |  ||  |__!_');
writeln('       _I__|  ||__|__|__|_||          A          ||_|__|__|__||- |__I_');
writeln('       -|--|- ||--|--|--|-||       __/_\__  *    ||-|--|--|--||= |--|-');
writeln('        |  |  ||  |  |  | ||      /\-''o''-/\      || |  |  |  ||  |  |');
writeln('        |  |= ||  |  |  | ||     _||:<_>:||_     || |  |  |  ||= |  |');
writeln('        |  |- ||  |  |  | || *  /\_/=====\_/\  * || |  |  |  ||= |  |');
writeln('       -|--|= ||--|--|--|-||:::::::::::::::::::::||-|--|--|--||- |--|-');
writeln('      ~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^~~~~~~~~~');
end;

procedure choice1(var kn,kp:Integer);
Var
x:Integer;
Begin
writeln;
writeln;
writeln('                     maintenant vous etes a cote de la porte ');
writeln;
writeln('                              1. detruire la porte ');
writeln('                          2. ouvrir la porte lentement');
writeln;
writeln('                             ==> Choisis sagement <==');
Repeat
write('                                       ==> ');
read(x);
if x=1 Then kn:=kn+1
else kp:=kp+1;
until (x=2) or (x=1);
end;






//séquence 2
procedure old_man(kp,kn:integer; var  inv:Integer);
Var
rep:string;
Begin
writeln;
writeln('sur le chemin du chateau, tu as trouve ');
writeln('un vieil homme qui vous a dit:');
WriteLn('-bonjour mon fils, est-ce que tu te diriges vers Chateau d''Angoumomble?');
writeln;
write('[oui/non]: ');
Repeat
write('=> ');
readln(rep);
Until (rep='oui') or (rep='non');
if rep='oui' then
Begin
writeln;
writeln('soyez prudent et voici une potion qui vous aidera dans votre voyage au revoir.');
writeln;
inv:=inv+1;
kn:=kn+1;
end
else
Begin
e1hp:=0;
kp:=kp+1;
writeln('alors vous n''avez pas besoin de la potion que j''allais vous donner. Au revoir.');
end;
end;









//dégâts infligés aux ennemis
function dmg_dlt (class,e1hp:integer; d:char ):integer;
Var
dmg:Integer;
Begin
randomize;
if class=1 Then
Begin
if d='f' then
Begin
Repeat
dmg:=random(33);
until dmg in [10..32];
end
else if d='m' then
Begin
Repeat
dmg:=random(31);
until dmg in [10..30];
end
else
Begin
Repeat
dmg:=random(28);
until dmg in [10..27];
end;
End
Else
Begin
if d='f' then
Begin
Repeat
dmg:=random(38);
until dmg in [14..37];
end
else if d='m' then
Begin
Repeat
dmg:=random(34);
until dmg in [14..33];
end
else
Begin
Repeat
dmg:=random(31);
until dmg in [14..30];
end;
end;
dmg_dlt:=dmg;
end;









//dégâts subis par les ennemis
Function dmg_tkn (hp:Integer; d:Char):integer;
Var
dmg:Integer;
Begin
randomize;
if d='f' then
Begin
Repeat
dmg:=random(21);
until dmg in [10..20];
end
else if d='m' then
Begin
Repeat
dmg:=random(23);
until dmg in [12..22];
end
else
Begin
Repeat
dmg:=random(29);
until dmg in [14..28];
end;
dmg_tkn:=dmg;
end;








//boss fight 1
Procedure enemy1 (var class,nbpt,hpre,inv,hp,e1hp:Integer;d:Char);
Var
rpns:String;
x,hp1:Integer;
dmg,dmgt,restd:Integer;
Begin
hp1:=hp;
Repeat
writeln;
writeln('Qu''est-ce que tu veux faire? ');
writeln('   1. Attaquer ');
writeln('   2. Echapper  ');
writeln('   3. boire une potion de sante pour ajouter ', 20 , 'de votre sante');
readln(x);
until (x in [1..3]);
ClrScr;
if x=1 then
Begin
dmg:=dmg_dlt(class,e1hp,d);
dmgt:=dmg_tkn (hp,d);
e1hp:=e1hp-dmg;
hp:=hp-dmgt;
end
else if x=3 Then
Begin
if inv>0 Then
Begin
hp:=hp+hpre;
inv:=inv-1;
Writeln;
WriteLn;
writeln('!! attention il te reste ',inv,' potions !!');
end
Else
Begin
WriteLn;
WriteLn;
 writeln('malheureusement tu as 0 potions :( ');
WriteLn;
WriteLn;
end;
readln;
ClrScr;
end
Else
Begin
writeln;
writeln('tu t''es enfui et a trouve le vieil homme qui est arrive en debut de voyage ');
writeln('il vend maintenant les potions ');
writeln('vous pouvez en acheter un par 100 $');
writeln('tu as cette somme d''argent: ',mny);
if mny<100 then
Begin
 writeln('Malheureusement, vous ne pouvez pas acheter une potion :( ');
 readln;
end
Else
Begin
writeln('veux tu acheter une potion ?');
Repeat
writeln('[oui/non]');
readln(rpns);
until (rpns='oui') or (rpns='non');
if rpns='oui' then
Begin
inv:=inv+1;
mny:=mny-100;
end;
end;
end;
if hp<30 then
Begin
writeln('!!!!  vous avez pris trop de dmg vous etes trop !!!!' );
writeln('!!! faible pour terminer le combat !!! ');
writeln('!!! tu peux revenir en arrière et acheter des potions   !!!');
end;
end;









// CLF
procedure frd_zw (var fzw:Integer);
Begin
Repeat
Writeln('1=frouda / 2=zwez');
Readln(fzw);
until (fzw=1) or (fzw=2);
end;









//XO


//affichage de progrès
Procedure aff (ch1,ch2,ch3:String);
Begin
writeln('|--|---|---|');
WriteLn('|',ch1,'|');
writeln('|--|---|---|');
WriteLn('|',ch2,'|');
writeln('|--|---|---|');
WriteLn('|',ch3,'|');
writeln('|--|---|---|');
end;

//choisir 'X' ou 'O'
Procedure symbole (Var s:char);
Begin
writeln('chosissez un symbole: ');
write('==> ');
Repeat
readln(s);
until(s='x') or (s='o');
s:=Upcase(s);
end;

//remplir le matrice par enters de 1 a 9
Procedure remp_mat (Var m:tab);
Var
  x,l,c: Integer;
Begin
x := 1;
For l:=1 To 3 Do
Begin
For c:=1 To 3 Do
Begin
m[l,c] := x;
x := x+1;
End;
End;
End;

//tester si vous pouvez choisir l'entier donné
function pass (m:tab;n:Integer):Boolean;
Var
l,c:Integer;
v:Boolean;
Begin
v:=False;
for l:=1 to 3 Do
Begin
for c:=1 to 3 Do
Begin
if m[l,c]=n then v:=true;
end;
end;
pass:=v;
end;

//si vous pouvez choisir l'entier donné, il le supprime de la matrice
Procedure supp (var m:tab;n:Integer);
Var
l,c:Integer;

Begin
for l:=1 to 3 Do
Begin
for c:=1 to 3 Do
Begin
if m[l,c]=n then m[l,c]:=0;
end;
end;
end;

//choisir un entier(joueur)
Procedure choisir_num (Var ind:Integer;Var m:tab);
Var
i: Integer;
v: Boolean;
Begin
Repeat
Write('choisissez une cordonnee ');
Readln(ind);
v := pass(m,ind);
Until (ind In [1..9]) And (v);
supp(m,ind);
End;


//choisir un entier(pc)
Procedure choisir_ai (Var r:Integer;Var m:tab);
Var
i: Integer;
v: Boolean;
Begin
Repeat
r:=random(10);
v := pass(m,r);
Until (r In [1..9]) And (v);
supp(m,r);
End;

//remplace le numéro par le symbole(joueur)
Procedure trt_plyr (n:integer; s:char; var ch1,ch2,ch3:String);
Begin
{TRT sur ch1}
if n in [1..3] Then
Begin
if n=1 Then
Begin
insert (s,ch1,1) ;
delete(ch1,pos('1',ch1),1);
end
else if n=2 Then
Begin
insert (s,ch1,5) ;
delete(ch1,pos('2',ch1),1);
End
Else
Begin
insert (s,ch1,9) ;
delete(ch1,pos('3',ch1),1);
end;
End
{TRT sur ch2}
else if n in [4..6] Then
Begin
if n=4 Then
Begin
insert (s,ch2,1) ;
delete(ch2,pos('4',ch2),1);
end
else if n=5 Then
Begin
insert (s,ch2,5) ;
delete(ch2,pos('5',ch2),1);
End
Else
Begin
insert (s,ch2,9) ;
delete(ch2,pos('6',ch2),1);
end;
End
{TRT sur ch3}
Else
Begin
if n=7 Then
Begin
insert (s,ch3,1) ;
delete(ch3,pos('7',ch3),1);
end
else if n=8 Then
Begin
insert (s,ch3,5) ;
delete(ch3,pos('8',ch3),1);
End
Else
Begin
insert (s,ch3,9) ;
delete(ch3,pos('9',ch3),1);
end;
end;
end;

//remplace le numéro par le symbole(pc)
Procedure trt_ai (n,r:integer; s:char; var ch1,ch2,ch3:String);
Var
s1:char;
v,ver:Boolean;
i,j:integer;
chf:String;
Begin
Randomize;
v:=false;
str(r,chf);
{TRT sur CHs}
if s='X' then s1:='O'
else s1:='X';
if r in [1..3] Then
Begin
if r=1 Then
Begin
insert (s1,ch1,1) ;
delete(ch1,pos('1',ch1),1);
end
else if r=2 Then
Begin
insert (s1,ch1,5) ;
delete(ch1,pos('2',ch1),1);
End
Else
Begin
insert (s1,ch1,9) ;
delete(ch1,pos('3',ch1),1);
end;
End
{TRT sur ch2}
else if r in [4..6] Then
Begin
if r=4 Then
Begin
insert (s1,ch2,1) ;
delete(ch2,pos('4',ch2),1);
end
else if r=5 Then
Begin
insert (s1,ch2,5) ;
delete(ch2,pos('5',ch2),1);
End
Else
Begin
insert (s1,ch2,9) ;
delete(ch2,pos('6',ch2),1);
end;
End
{TRT sur ch3}
Else
Begin
if r=7 Then
Begin
insert (s1,ch3,1) ;
delete(ch3,pos('7',ch3),1);
end
else if r=8 Then
Begin
insert (s1,ch3,5) ;
delete(ch3,pos('8',ch3),1);
End
Else
Begin
insert (s1,ch3,9) ;
delete(ch3,pos('9',ch3),1);
end;
end;
aff(ch1,ch2,ch3);
end;


//en cas d'égalité
function gameover (m:tab):Boolean;
Var
v:Boolean;
l,c:Integer;
Begin
v:=true;
For l:=1 To 3 Do
Begin
For c:=1 To 3 Do
Begin
if m[l,c]<>0 then v:=False;
End;
End;
gameover:=v;
end;




//page de fin
Procedure credits;
Begin
writeln('                                 __________________________ ');
writeln('                                 |OFFo oON                  | ');
writeln('                                 | .----------------------. |');
writeln('                                 | |  .----------------.  | |');
writeln('                                 | |  |    cree par    |  | |');
writeln('                                 | |))|                |  | |');
writeln('                                 | |  |   MOUHIB OUNI  |  | |');
writeln('                                 | |  |                |  | |');
writeln('                                 | |  |   27-05-2019   |  | |');
writeln('                                 | |  |                |  | |');
writeln('                                 | |  |                |  | |');
writeln('                                 | |  ''----------------''  | |');
writeln('                                 | |__GAME BOY____________/ |');
writeln('                                 |          ________        | ');
writeln('                                 |    .    (Nintendo)       | ');
writeln('                                 |  _| |_   """"""""   .-.  |');
writeln('                                 |-[_   _]-       .-. (   ) |');
writeln('                                 |   |_|         (   ) ''-''  |');
writeln('                                 |    ''           ''-''   A   | ');
writeln('                                 |                 B        | ');
writeln('                                 |          ___   ___       |');
writeln('                                 |         (___) (___)      | ');
writeln('                                 |        select start      | ');
writeln('                                 |                          /');
writeln('                                 |                         .');
writeln('                                 ''-----------------------`');
end;









//programme principal
Begin
Repeat
randomize;
start;
ClrScr;
choose_class;
readln;
ClrScr;
pick_class(class);
readln;
ClrScr;
nbpt:=0;
name_layout;
writeln;
writeln;
Repeat
write('donner votre pseudo: ');
readln(pseudo);
until length(pseudo)>2;
difficulte(d);



//santé régénérée
if d='f' then hpre:=12
else if d='m' then hpre:=10
else hpre:=8;

//inventaire (nombre de potions)
if d='f' then  inv:=2
else if d='m' then  inv:=2
else inv:=1;

//nombre de potions
if d='f' then nbpt:=2
else if d='m' then nbpt:=1
else nbpt:=0;

//santé
if class=1 then
Begin
if d='f' then hp:=160
else if d='m' then hp:=140
else hp:=200;
hpx:=hp;
End
Else
Begin
if d='f' then hp:=170
else if d='m' then hp:=150
else hp:=200;
hpx:=hp;
end;

//la santé des ennemis
//premier ennemi
if d='f' then e1hp:=160
else if d='m' then e1hp:=140
else e1hp:=200;
//enemy 2
if d='f' then e2hp:=160
else if d='m' then e2hp:=140
else e2hp:=200;

//montant d'argent que vous avez
if d='f' then mny:=200
else if d='m' then mny:=200
else mny:=100;

//initialisation de la santé des ennemis
e1hpx:=e1hp;
e2hpx:=e2hp;
e3hpx:=e3hp;


//réinitialiser la valeur 'hp'

hpx:=hp;

//karma sys
kp:=0;kn:=0;

//score
scorej:=0;
scorep:=0;


writeln;
writeln;
prologue;
old_man(kp,kn,nbpt);
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln('                     **Appuyez sur ENTRER pour continuer**');
readln;
ClrScr;
castle;
choice1(kn,kp);

ClrScr;
writeln('                           ''''un ennemi a apparu''''  ');
writeln;
writeln;
Repeat
writeln('votre quantite de sante: ',hp);
writeln('la quantite de sante de votre ennemi: ',e1hp);
enemy1(class,nbpt,hpre,inv,hp,e1hp,d);

writeln;
writeln('         ###############');
writeln;
writeln;
if hp<=0 Then
Begin
writeln('      _    __   __        _  _         ');
writeln('     | |  /_/  / _|      (_)| |        ');
writeln('   __| |  ___ | |_  __ _  _ | |_  ___  ');
writeln('  / _` | / _ \|  _|/ _` || || __|/ _ \ ');
writeln(' | (_| ||  __/| | | (_| || || |_|  __/ ');
writeln('  \__,_| \___||_|  \__,_||_| \__|\___| ');
hp:=hpx;
kn:=kn+1;
writeln;
writeln;
writeln('ENTRER pour rejouer ');
readln;
e1hp:=e1hpx;
scorep:=scorep+2;
end;


until (e1hp<=0);


if (e1hp<=0) Then
Begin
writeln('votre quantite de sante: ',hp);
writeln('la quantite de sante de votre ennemi: 0');
writeln('         _        _          _              ');
writeln('        (_)      | |        (_)             ');
writeln(' __   __ _   ___ | |_  ___   _  _ __  ___   ');
writeln('\ \ / /| | / __|| __|/ _ \ | ||  __|/ _ \   ');
writeln(' \ V / | || (__ | |_| (_) || || |  |  __/   ');
writeln('  \_/  |_| \___| \__|\___/ |_||_|   \___|   ');
hp:=hpx;
kp:=kp+1;
scorej:=scorej+1;
end;

hp:=hpx;
writeln('ENTRER pour continuer ');
readln;
clrscr;

//final boss
//some story prts here
writeln('                            **.................**');
writeln;
writeln;
writeln('    apres avoir battu le monstre, vous etes alle au sous-sol pour ');
writeln('  chercher votre princesse et vous avez ete surpris .. celui qui a cause');
writeln('    tout cela est le vieil homme que vous avez rencontre au debut');
writeln;
writeln('                            **.................**');
writeln;
writeln;
writeln;
writeln;
writeln('                            **.................**');
writeln;
writeln('il t''a dit:');
writeln('           -comme vous pouvez ou ne pas avoir remarque, la potion que ');
writeln('               je vous ai donnee vous donne plus de pouvoir mais');
writeln('             vous rend moins malin hahaha.. mais vous avez passe de');
writeln('                         mes monstres et les avez vaincus');
writeln;
writeln('                            **.................**');
writeln;
writeln;
writeln;
readln;
writeln('                            **.................**');
writeln;
writeln(              '-mais le pouvoir physique n''est pas toujours important.');
writeln('                        maintenant je vais tester votre esprit');
writeln('                            **.................**');
writeln;

readln;
ClrScr;

writeln('nous allons jouer a des mini-jeux ');
writeln('cela testera votre pensee et decidera si vous meritez d''etre un heros ou non ');
WriteLn;
writeln('etes vous pret ?');
readln;
ClrScr;

writeln('d''abord nous allons jouer XO');
Readln;


writeln('choisissez votre symbole [X/O] ');


//XO


symbole(s);
writeln;
writeln('je veux jouer avec ''',s,'''');
writeln;
writeln('nous allons jouer ''Chez la fourmi'' et le gagnant l''obtiendra ');
Readln;
ClrScr;


//CLF
scj:=0;
scp:=0;
cmp:=1;
frd_zw(fzw);
Repeat
Repeat
writeln('choisissez un nombre entre 0 et 5 ');
readln(opt);
until opt in [0..5];
opp:=random(6);
writeln;
writeln('le choix du PC: ',opp);
cmp:=cmp+1;
rst:=opt+opp;
if rst mod 2 = fzw then scj:=scj+1
else scp:=scp+1;
writeln;
writeln('==> votre score: ',scj);
writeln('==> le score du pc: ',scp);
writeln;
writeln('       #############');
writeln;
writeln;
writeln;
writeln;
until(cmp=4) or (scp=2) or (scj=2);


if scj<scp Then
Begin

writeln('      _    __   __        _  _         ');
writeln('     | |  /_/  / _|      (_)| |        ');
writeln('   __| |  ___ | |_  __ _  _ | |_  ___  ');
writeln('  / _` | / _ \|  _|/ _` || || __|/ _ \ ');
writeln(' | (_| ||  __/| | | (_| || || |_|  __/ ');
writeln('  \__,_| \___||_|  \__,_||_| \__|\___| ');
writeln;
writeln;
writeln;
writeln;
writeln('j''ai gagne donc je vais jouer avec ',s);
if s='X' then s:='O'
else s:='X';
scorep:=scorep+1;
end

else
Begin
writeln('         _        _          _              ');
writeln('        (_)      | |        (_)             ');
writeln(' __   __ _   ___ | |_  ___   _  _ __  ___   ');
writeln('\ \ / /| | / __|| __|/ _ \ | ||  __|/ _ \   ');
writeln(' \ V / | || (__ | |_| (_) || || |  |  __/   ');
writeln('  \_/  |_| \___| \__|\___/ |_||_|   \___|   ');
writeln;
writeln;
writeln;
writeln;
writeln('vous avez gagne alors vous allez jouer avec ',s);
scorej:=scorej+1;
end;
writeln;
writeln;
readln;
clrscr;



//XO

Repeat
i:=1;
ch1:='1 | 2 | 3 ';
ch2:='4 | 5 | 6 ';
ch3:='7 | 8 | 9 ';
WriteLn;
aff(ch1,ch2,ch3);
remp_mat(m);
Repeat
choisir_num(ind,m);
ClrScr;
choisir_ai(r,m);
trt_plyr(ind,s,ch1,ch2,ch3);
trt_ai(ind,r,s,ch1,ch2,ch3);
i:=i+1;




if (ch1[1]=s) and (ch2[1]=s)  and (ch3[1]=s) then x:=1
else if (ch1[5]=s) and (ch2[5]=s)  and (ch3[5]=s) then x:=1
else if (ch1[9]=s) and (ch2[9]=s)  and (ch3[9]=s) then x:=1
else if (ch1[1]=s) and (ch1[5]=s)  and (ch1[9]=s) then x:=1
else if (ch2[1]=s) and (ch2[5]=s)  and (ch2[9]=s) then x:=1
else if (ch3[1]=s) and (ch3[5]=s)  and (ch3[9]=s) then x:=1
else if (ch1[1]=s) and (ch2[5]=s)  and (ch3[9]=s) then x:=1
else if (ch1[1]=s) and (ch2[5]=s)  and (ch3[9]=s) then x:=1
else if (ch1[9]=s) and (ch2[5]=s)  and (ch3[1]=s) then x:=1

else if (ch1[1]=w) and (ch2[1]=w)  and (ch3[1]=w) then x:=0
else if (ch1[5]=w) and (ch2[5]=w)  and (ch3[5]=w) then x:=0
else if (ch1[9]=w) and (ch2[9]=w)  and (ch3[9]=w) then x:=0
else if (ch1[1]=w) and (ch1[5]=w)  and (ch1[9]=w) then x:=0
else if (ch2[1]=w) and (ch2[5]=w)  and (ch2[9]=w) then x:=0
else if (ch3[1]=w) and (ch3[5]=w)  and (ch3[9]=w) then x:=0
else if (ch1[1]=w) and (ch2[5]=w)  and (ch3[9]=w) then x:=0
else if (ch1[1]=w) and (ch2[5]=w)  and (ch3[9]=w) then x:=0
else if (ch1[9]=w) and (ch2[5]=w)  and (ch3[1]=w) then x:=0
else x:=2;

//vee:=gameover(m);

if x=1 then win:='felicitaitons tu as  gagne'
else if x=0 then win:=' echec   :(((((( '
else win:='';

//vee:=gameover1(ch1,ch2,ch3);

writeln(win);

until (win<>'') // or (vee);
until (win='felicitaitons tu as  gagne');

writeln('              _        _          _              ');
writeln('             (_)      | |        (_)             ');
writeln('     __   __ _   ___ | |_  ___   _  _ __  ___   ');
writeln('     \ \ / /| | / __|| __|/ _ \ | ||  __|/ _ \   ');
writeln('      \ V / | || (__ | |_| (_) || || |  |  __/   ');
writeln('       \_/  |_| \___| \__|\___/ |_||_|   \___|   ');

scorej:=scorej+1;

writeln;
writeln;
readln;
clrscr;

writeln('alors le score est ',scorej,' - ',scorep);
writeln;

if scorej<scorep then
Begin
//proc fiunal boss
writeln('Malheureusement vous n''etes pas capable d''etre un prince et de proteger cette ville');
end


Else
Begin
writeln('vous etes un vrai prince et vous etes capable de proteger cette ville, ');
WriteLn('mais vous avez un dernier defi a resoudre: vous devez deviner le ');
WriteLn('numero de la cage de votre princesse parmi les 10000 cages que nous avons ici..');

writeln;
writeln;
readln;
//last challenge
ctr1:=0;
//moy
if d='m' Then
Begin
 writeln('Je suis un nombre de 2 chiffres.');
 writeln(' Mon dizaine est egal à la moitie de 12. Mon chiffre des unites');
WriteLn('est la moitie de mon chiffre des dizaines. Qui suis-je ?');
vee:=false;
Repeat
ctr1:=ctr1+1;
write('==> ');
readln(rep1);
if rep1=63 then
Begin
scorej:=scorej+1;
vee:=True;
end
else
Begin
writeln('if vous reste ',3-ctr1,' essai ');
end;
until (ctr1=3) or (vee);
end





//facile
else if d='f' Then
Begin
 writeln('Je suis un nombre de 3 chiffres.');
 writeln(' Mes chiffres sont identiques et leur total fait 27.');
WriteLn('Qui suis-je ?');
vee:=false;
Repeat
ctr1:=ctr1+1;
write('==> ');
readln(rep1);
if rep1=999 then
Begin
scorej:=scorej+1;
vee:=True;
end
else
Begin
writeln('if vous reste ',3-ctr1,' essai ');
end;
until (ctr1=3) or (vee);
end




//diff
Else
Begin
 writeln('Je suis un nombre de 3 chiffres. Mes chiffres sont ');
 writeln('des nombres pairs qui se suivent dans l''ordre entre 1 et 7.');
WriteLn('Qui suis-je ?');
vee:=false;
Repeat
ctr1:=ctr1+1;
write('==> ');
readln(rep1);
if rep1=246 then
Begin
scorej:=scorej+1;
vee:=True;
end
else
Begin
writeln('if vous reste ',3-ctr1,' essai ');
end;
until (ctr1=3) or (vee);
end;

Readln;
ClrScr;


if vee=True then
begin
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
writeln('         felicitations,',pseudo, ' vous avez tout fait comme il faut :) ');
WriteLn('         vous avez sauve votre princesse et tue le seigneur des tenebres');
WriteLn;
WriteLn;
WriteLn;
writeln('                                  __  _');
writeln('                                 / _|(_) _ __');
writeln('                                 | |_ | || ''_ \');
writeln('                                 |  _|| || | | |');
writeln('                                 |_|  |_||_| |_|');
End

Else

Begin
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn;
WriteLn('     Malheureusement ,',pseudo, ' vous n''avez pas pu sauver votre princesse :( ');
WriteLn('                                plus de chance la prochaine fois');
WriteLn;
WriteLn;
WriteLn;
writeln('                                  __  _');
writeln('                                 / _|(_) _ __');
writeln('                                 | |_ | || ''_ \');
writeln('                                 |  _|| || | | |');
writeln('                                 |_|  |_||_| |_|');
end;
end;


Readln;
credits;
Readln;
ClrScr;


writeln('                                 _                       ___  ');
writeln('                       _ _  ___ <_> ___  _ _  ___  _ _  <_. >  ');
writeln('                      | ''_>/ ._>| |/ . \| | |/ ._>| ''_>  /_/ ');
writeln('                      |_|  \___.| |\___/`___|\___.|_|    <_>   ');
writeln('                               <__''                            ');
write('? ');
readln(replay);
ClrScr;

until(replay<>'oui');
end.