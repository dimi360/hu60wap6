{include file="tpl:comm.head" title="编码解码器" no_user=true}
<div id="coder">
    <form action="{$CID}.{$PID}.{$BID}" method="post">
        <p>欲编码/解码的内容：</p>
        <p><textarea name="content">{$smarty.post.content|code}</textarea></p>
        <p>编码所采用的字符集：<select name="code">
                <option value="UTF-8" {if $smarty.post.code == 'UTF-8'}selected{/if}>UTF-8</option>
                <option value="GBK" {if $smarty.post.code == 'GBK'}selected{/if}>GBK</option>
                <option value="UTF-16LE" {if $smarty.post.code == 'UTF-16LE'}selected{/if}>UTF-16LE</option>
                <option value="UTF-16BE" {if $smarty.post.code == 'UTF-16BE'}selected{/if}>UTF-16BE</option>
            </select></p>
        <p>欲进行的操作：<select name="action">
                <option value="ehex" {if $smarty.post.action == 'ehex'}selected{/if}>十六进制编码</option>
                <option value="dhex" {if $smarty.post.action == 'dhex'}selected{/if}>十六进制解码</option>
                <option value="eb64" {if $smarty.post.action == 'eb64'}selected{/if}>base64编码</option>
                <option value="db64" {if $smarty.post.action == 'db64'}selected{/if}>base64解码</option>
                <option value="xdb64" {if $smarty.post.action == 'xdb64'}selected{/if}>base64编码(输入十六进制值)</option>
                <option value="db64x" {if $smarty.post.action == 'db64x'}selected{/if}>base64解码(显示十六进制结果)</option>
                <option value="eurl" {if $smarty.post.action == 'eurl'}selected{/if}>URL编码</option>
                <option value="durl" {if $smarty.post.action == 'durl'}selected{/if}>URL解码</option>
                <option value="eurls" {if $smarty.post.action == 'eurls'}selected{/if}>智能URL编码</option>
                <option value="jsure" {if $smarty.post.action == 'jsure'}selected{/if}>JS风格URL编码</option>
                <option value="jsurd" {if $smarty.post.action == 'jsurd'}selected{/if}>JS风格URL解码</option>
                <option value="emd5" {if $smarty.post.action == 'emd5'}selected{/if}>MD5加密</option>
                <option value="esha1" {if $smarty.post.action == 'esha1'}selected{/if}>SHA1加密</option>
                <option value="esha256" {if $smarty.post.action == 'esha256'}selected{/if}>SHA256加密</option>
                <option value="djson" {if $smarty.post.action == 'djson'}selected{/if}>JSON解码</option>
                <option value="ndjson" {if $smarty.post.action == 'ndjson'}selected{/if}>JSON解码（移除所有空白）</option>
                <option value="ejson" {if $smarty.post.action == 'ejson'}selected{/if}>JSON编码</option>
                <option value="json2serialize" {if $smarty.post.action == 'json2serialize'}selected{/if}>JSON转serialize+url编码</option>
                <option value="njson2serialize" {if $smarty.post.action == 'njson2serialize'}selected{/if}>JSON转serialize+url编码（移除所有空白）</option>
                <option value="date" {if $smarty.post.action == 'date'}selected{/if}>时间戳转日期</option>
                <option value="str2time" {if $smarty.post.action == 'date'}selected{/if}>日期转时间戳</option>
            </select></p>
        <p><input type="submit" value="操作"/></p>
    </form>
</div>
<div id="result">
    <p><textarea name="content">{$result|code}</textarea></p>
    <p>当前时间戳：{$smarty.server.REQUEST_TIME|code}</p>
</div>
{include file="tpl:comm.foot"}